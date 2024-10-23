build: build-tailwindcss gen-qrcode build-hugo

build-tailwindcss:
	@echo "-> Installing tailwindcss"
	[ $$(which tailwindcss) ] || npm install -g tailwindcss@3.4.4
	@echo "-> Generating css file"
	tailwindcss \
		-c .dev/tailwind.config.js \
		-i .dev/input.css \
		-o assets/css/resume.css \
		--minify

gen-qrcode:
	@echo "-> Installing required python packages"
	python3 -m pip install -r .dev/requirements.txt
	@echo "-> Generating QR Codes"
	python3 .dev/qr_gen.py

build-hugo:
	@echo "-> Building site"
	[ $$(which hugo) ] \
		&& hugo --gc --minify\
		|| go run github.com/gohugoio/hugo@v0.136.4 --gc --minify

# dev section - below

css-dev:
	npx tailwindcss \
		-c .dev/tailwind.config.js \
		-i .dev/input.css \
		-o assets/css/resume.css \
		--watch

serve-py:
	@echo serve with python
	python3 -m http.server -d public 80

crop-img:
	 cwebp -q 90 static/resume-picture.jpg -crop 0 0 827 827 -resize 336 336 -o static/resume-picture.webp
	
start:
	nix-shell -p hugo tailwindcss go --command zsh

