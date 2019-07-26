import Foundation
import Cepeg

public func create_thumbnail_epeg(original: String, destination: String) -> Void
{
	Cepeg.create_thumbnail_jpeg(original, destination)
}
