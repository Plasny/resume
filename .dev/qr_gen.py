#!/usr/bin/env python3

import yaml
import qrcode
import qrcode.image.svg
import urllib.parse


def main():
    with open('hugo.yaml', 'r') as f:
        data = yaml.safe_load(f)
        for lang in data['languages']:
            url = urllib.parse.urljoin(data['baseURL'], lang)
            qrcode.make(
                url,
                image_factory=qrcode.image.svg.SvgImage,
                border=0
            ).save(f'assets/qr_code.{lang}.svg')
            print(f'QR Code for {url} generated')


if __name__ == "__main__":
    main()
