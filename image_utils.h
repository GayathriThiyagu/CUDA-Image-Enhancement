#ifndef IMAGE_UTILS_H
#define IMAGE_UTILS_H

#include <string>

class ImageUtils {
public:
    static bool fileExists(const std::string& filename);
    static std::string getFileExtension(const std::string& filename);
    static bool isSupportedFormat(const std::string& filename);
};

#endif // IMAGE_UTILS_H
