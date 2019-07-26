#include "include/libepeg.h"

void create_thumbnail_jpeg(const char *orignal, const char *destination)
{
		Epeg_Image *image = epeg_file_open(orignal);
		static float ratio;
		static int thumb_width;
		static int thumb_height = 600;
		static int thumb_quality = 85;
		static char *thumb_comment = NULL;

		epeg_decode_size_set			(image, thumb_width, thumb_height);
		ratio = thumb_height / image->in.h;
		thumb_width = (int)(image->in.w * ratio);
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
