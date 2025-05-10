#!/bin/bash

# Set variables
APP_NAME="ANIE"
DMG_NAME="${APP_NAME}_1.0preview4"
VOLUME_NAME="${APP_NAME} Installer"
SOURCE_DIR="downloads"
DMG_DIR="downloads"
TMP_DMG="${DMG_DIR}/${DMG_NAME}_tmp.dmg"
FINAL_DMG="${DMG_DIR}/${DMG_NAME}.dmg"

# Create a temporary DMG
hdiutil create -size 100m -fs HFS+ -volname "${VOLUME_NAME}" "${TMP_DMG}"

# Mount the temporary DMG
hdiutil attach "${TMP_DMG}"

# Get the device name
DEVICE_NAME=$(hdiutil info | grep "${VOLUME_NAME}" | grep "/dev/" | awk '{print $1}')

# Copy the .app to the mounted DMG
cp -R "${SOURCE_DIR}/${APP_NAME}.app" "/Volumes/${VOLUME_NAME}/"

# Create Applications shortcut
ln -s /Applications "/Volumes/${VOLUME_NAME}/Applications"

# Set custom icon and background (optional)
# Add custom styling here if needed

# Unmount the temporary DMG
hdiutil detach "${DEVICE_NAME}"

# Convert the temporary DMG to the final compressed DMG
hdiutil convert "${TMP_DMG}" -format UDZO -o "${FINAL_DMG}"

# Clean up
rm "${TMP_DMG}"

echo "DMG created successfully at ${FINAL_DMG}" 