## Drupal 7 flavour of Pattern Lab PHP

This is a Drupal 7 flavour of [Pattern Lab PHP](https://github.com/alienlebarge/patternlab-php)

We have cloned the v0.3.5 version of this repo and made some folder structure changes, stripped out some of the examples that was bloating it as a framework and added in some Drupal specific markup

## Structure principles

The structure of the Pattern Lab navigation (atoms, molecules, organisms) is using Brad Frosts ['Atomic Design'](http://bradfrostweb.com/blog/post/atomic-web-design/)

## CSS

Use of SASS, Compass and Singularitygs is used as a standard on our projects

We code using the SMACSS methodology: http://smacss.com/

## Setting up a project from this repo

**PHP 5.3+ must be installed while you are generating patterns and building the public version of the website (either locally or on a server)**
**Singularitygs is our preferred grid system: https://github.com/Team-Sass/Singularity/wiki**

1. Download this repo into the folder you wish to work in
2. Ensure sass, compass and singularitygs is installed (you may need to run the commands with `sudo` in front)

```
gem install sass
gem install compass
gem install singularitygs
```

3. You now need to generate the site for the first time - this will populate the `public` folder. Run the following command (from the project folder root) or open the following script: `scripts/generateSite.command`

```
php builder/builder.php -g
```
4. You should now be able to view our out of the box version of Pattern Lab website by opening the following file

```
public/index.html
```

5. Make edits to the generated code from inside the `source` folder
6. To get the changes you make reflected in the public version of the website you'll need to watch that folder for changes by using the following command (from the project folder root)

```
php builder/builder.php -w
```

7. Making edits/additions to the scss files requires you to watch the source folder to compile the CSS, using the following command from inside the source folder

```
compass watch
```

## Viewing a page without the Pattern Lab navigation

We will need to show the client the files inside the `pages` folder without the Pattern Lab navigation, when opening these pages we should be able to jump around the links to other pages in the site

1. Open the file directly from inside the `public` folder, so to open the Homepage we'd just open the following file

```
public/patterns/04-pages-00-homepage/04-pages-00-homepage.html
```

2. The `pages` folder also has a `.json` file for each `.mustache` file allows us to add in real data into the pages that the client would be viewing as a representation of their site, there are more details available on this of the [Pattern Lab PHP wiki](https://github.com/pattern-lab/patternlab-php/wiki/Overriding-the-Central-%60data.json%60-Values-with-Pattern-specific-Values)

## Front end specifics

1. Fitvids.js can be used for responsive videos `assets/js/vendor/jquery.fitvids.js`
2. Drupal 7 can have the jQuery version updated to 1.8.2 currently (this is the version running by default on the style guide - see `pattern-header-footer/footer.html`)
3. We will be using the [Drupal 7 picture module](https://drupal.org/project/picture) to serve different images by breakpoint so follow the same output and detail out inside the images atom
4. Use [icomoon](http://icomoon.io) for handling icons - this will allow they to be easily scalable, treated with CSS and quality maintained for retina devices. The Pattern Lab already have an example of icons using icomoon
5. Use compass spiriting to generate sprite(s) for use in the CSS, use a mixin that allows for retina sprites too (This is a good one as a starting point: https://github.com/AdamBrodzinski/Retina-Sprites-for-Compass)


