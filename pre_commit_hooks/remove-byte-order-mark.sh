#!/usr/bin/env sh
#
# Remove UTF byte-order-mark

set -e

UTF8_BOM="\xEF\xBB\xBF"
UTF16_BOM="\xFE\xFF"

has_error=0

for FILE in $@; do
    sed -b -i -e "1s/^$UTF8_BOM//" "$FILE"
    sed -b -i -e "1s/^$UTF16_BOM//" "$FILE"
done

if [ $has_error -eq 1 ] ; then
    echo "To ignore, use --no-verify"
fi

exit $has_error
