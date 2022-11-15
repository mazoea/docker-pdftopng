# Internal project

Please, do not seek support for this project.

##

```
docker build -t maz/pdftopng:latest .
docker run --rm -v %cd%:/var/task/d maz/pdftopng ./d/simple.pdf ./d/out
```