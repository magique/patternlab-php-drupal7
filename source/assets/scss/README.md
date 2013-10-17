## Using SCSS

Ensure you have sass, compass and singularitygs installed, if you don't already you can install them using the following commands (you may need to add sudo in front of them)

```
gem install sass
gem install compass
gem install singularitygs
```

## Compiling SCSS to CSS

Using the command navigate to the source folder

```
cd source
```

Then run the following command to watch for scss changes which will then compile the scss into css files that live in the assets/css folder

```
compass watch
```

To stop watching for changes type CTRL+C

## Singularitygs

We use [singularitygs](http://singularity.gs/) for the grid system
There is detailed documentation of their [wiki](https://github.com/Team-Sass/Singularity/wiki)

## SMACSS methodology

We code using the SMACSS methodology: http://smacss.com/