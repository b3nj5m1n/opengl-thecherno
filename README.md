# My code from following along with the [OpenGL series](https://www.youtube.com/playlist?list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2) by [The Cherno](https://www.youtube.com/channel/UCQ-W1KE9EYfdxhL6S4twUNw)

# Notes (General)

Written in (neo)vim, on a linux machine, compiled using g++, meaning some of the stuff that works using the microsoft compiler just doesn't anywhere else. That's why some of the code is very different to what The Cherno shows in his series.

# Notes (To specific Episodes)

## [Writing a Shader in OpenGL](https://www.youtube.com/watch?v=71BLZwRGUJE&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&index=8&t=0s)
On my laptop the default version of OpenGL in mesa wasn't correct, so I was getting errors when trying to compile shaders using the 330 core profile.
Here is the solution:
`export MESA_GL_VERSION_OVERRIDE=3.3`

## [Buffer Layout Abstraction in OpenGL](https://www.youtube.com/watch?v=oD1dvfbyf6A&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&index=15&t=0s)
The way he does templates inside of the class is specific to the compier he's using, and it doesn't work using any other compiler.
The fix is pretty simple, just move the template functions outside of the class.

## [Writing a Basic Renderer in OpenGL](https://www.youtube.com/watch?v=jjaTTRFXRAk&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&index=17&t=0s)
I was getting a bunch of inclusion errors and fixed it in a different way, by putting stuff like the GLCall macro in a seperate file (GLErrorManager).
