\name{transformFilter-class}
\docType{class}
\alias{transformFilter-class}
\alias{transformFilter}
\alias{show,transformFilter-method}

\title{
  
  A class for encapsulating a filter to be performed on transformed
  parameters

}

\description{
  
  The \code{transformFilter} class is a mechanism for including one or
  more variable transformations into the filtering process. Using a
  special case of \code{\link[flowCore:transform-class]{transform}} we
  can introduce 
  transformations inline with the filtering process eliminating the need
  to process \code{\link[flowCore:flowFrame-class]{flowFrame}} objects
  before applying a filter.

}


\section{Objects from the Class}{
  
  Objects of this type are not generally created ``by hand''. They are a
  side effect of the use of the
  \code{\link[flowCore:filter-on-methods]{\%on\%}} method 
  with a \code{\link[flowCore:filter-methods]{filter}} object on the
  left hand side and a
  \code{\link[flowCore:transformList-class]{transformList}} on the right
  hand side.  

}

\section{Slots}{
  \describe{
    
    \item{\code{transforms}:}{A list of transforms to perform on the
      target \code{\link[flowCore:flowFrame-class]{flowFrame}}}
    
    \item{\code{filter}:}{The filter to be applied to the transformed
      frame}
    
    \item{\code{filterId}:}{The name of the filter (chosen
      automatically)}
    
  }
}

\section{Extends}{
Class \code{"\linkS4class{filter}"}, directly.
}

\author{ B. Ellis }

\seealso{
  
  \code{"\linkS4class{filter}"}, \code{"\linkS4class{transform}"},
  \code{\link[flowCore:transform-class]{transform}}
  
}

\examples{

samp <- read.FCS(system.file("extdata", "0877408774.B08", package="flowCore"))

## Gate this object after log transforming the forward and side
## scatter variables
filter(samp, norm2Filter("FSC-H", "SSC-H", scale.factor=2)
       \%on\% transform("FSC-H"=log,"SSC-H"=log))

}

\keyword{classes}
