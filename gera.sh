#!/bin/bash

cp template.html newsletter.html

premailer newsletter.html | htmlcompressor | sed -e 's/%7C/|/g;s/style-preserve[^>]*/style/g' > newsletter-final.html
mv newsletter-final.html newsletter.html