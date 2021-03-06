% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/render.R
\name{render}
\alias{render}
\title{Directly render threejs scenes}
\usage{
render(scene, height = NULL, width = NULL, bg = "white",
  camera_position = c(-5, 3, 10), camera_lookat = c(-1, 2, 4),
  ambient = "#555555", lights = new("pointLight", color = "white", position
  = c(-5, 3, 10)), ...)
}
\arguments{
\item{scene}{A JSON-encoded threejs scene or object that can be added to a threejs scene (for instance, a group).}

\item{height}{The container div height.}

\item{width}{The container div width.}

\item{bg}{The container background color.}

\item{camera_position}{A three-element coordinate position vector of the threejs perspective camera.}

\item{camera_lookat}{A three-element coordinate position vector that the camera looks at.}

\item{ambient}{The ambient light color.}

\item{lights}{Either a single 'pointLight' object, or a list of them.}

\item{...}{Optional additional parameters passed to the rendering code.}
}
\description{
Directly render low-level JSON-encoded threejs scenes and objects.
Objects with an 'animations' field will be animated using the
threejs THREE.animationMixer function.
}
\examples{
render(gzfile(system.file("extdata/pump.json.gz", package="threejs")), bg="black")

# An example from the threejs.org source code:
source <- "https://raw.githubusercontent.com/mrdoob/three.js/master/examples/models/json/scene-animation.json"
render(url(source), camera_position=c(-100, 0, 100))
}
