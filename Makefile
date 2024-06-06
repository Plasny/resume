css:
	@echo "Generating css file"
	tailwindcss -i ./assets/css/input.css -o ./assets/css/resume.css

css-dev:
	tailwindcss -i ./assets/css/input.css -o ./assets/css/resume.css --watch

gen-qrcode:
	@echo "Generating QR Codes"
	python3 -m pip install -r .bin/requirements.txt
	python3 .bin/qr_gen.py

serve-py:
	@echo build site
	hugo
	@echo serve with python
	python3 -m http.server -d public 80

crop-img:
	 cwebp -q 90 static/resume-picture.jpg -crop 0 0 827 827 -resize 336 336 -o static/resume-picture.webp
	
start:
	nix-shell -p hugo tailwindcss go --command zsh
