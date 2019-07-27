#include "epeg_private.h"
#include "epeg.h"

void create_thumbnail_jpeg(const char *orignal, const char *destination, const int dest_width)
{
		Epeg_Image *image = epeg_file_open(orignal);
		float ratio;
		int thumb_width = dest_width;
		int thumb_height;
		int thumb_quality = 100;
		char *thumb_comment = NULL;

		ratio = (float)thumb_width / (float)image->in.w;
		thumb_height = (int)(image->in.h * ratio);
		epeg_decode_size_set			(image, thumb_width, thumb_height);
		epeg_quality_set				(image, thumb_quality);
		epeg_thumbnail_comments_enable	(image, 1);
		epeg_comment_set				(image, thumb_comment);
		epeg_file_output_set			(image, destination);
		epeg_encode						(image);
		epeg_close						(image);
}

static void create_thumbnail(char *path)
{

}
