Export to Multiple Sizes
==================

    Export to Multiple Sizes is a script for easily exporting multiple size images from Photoshop.
    All you do is open your image, select the script from the Photoshop File > Script menu, choose the platform and the export directory.

    For more information about Export to Multiple Sizes please visit http://www.velara3.com/

    Currently supported platforms include:

        Mac OS X
        Win XP
        Photoshop CS5+


Install Prerequisites
---------------------

    You must have Mac OS X or Windows and Photoshop CS5 or greater.


Installation
---------------------

    After you have downloaded and unzipped the software,
    Copy the "ExportToMultipleSizes.jsx" into the Photoshop scripts directory.

    On Mac this directory is:

    Applications/Adobe Photoshop CS/Presets/Scripts

    On Windows this directory is:

    Program Files\Adobe\Adobe Photoshop CS\Presets\Scripts

    Note: The Photoshop directory name may vary slightly depending on your version


Instructions
---------------------

    To use:

    Note: A video overview is here - http://youtu.be/_la4ErHBJ5o

    1. After installation, start Photoshop or restart it if it is open.
    2. Save any open projects
    3. Select File > Scripts > Export to Multiple Sizes

       Note: If there is no image open it will ask you to select an image.

       Next a dialog will appear asking you to select the platform to export to.
       The options include AIR, Android or iOS (iPhone / iPad) and
       any custom size sets you have created.

    4. Select the platform you would like to export to and then click OK.

       Another dialog appear asking you where you would like to save to.

    5. Select the export directory and click Open.

       The files will begin to be exported to the directory.
       A dialog will appear when exporting is complete.


    Adding your own size sets:


    If you would like to add your own size sets open the "ExportToMultipleSizes.jsx"
    script in a text editor. Make sure to make a backup up before proceeding.

    Note: Detailed instructions are in the video and in the script as well

    1. Find the line labeled "CustomPlatforms"
    2. Type a name for your export sizes
    3. Enter a list of sizes you want to export
    4. Save the script
    5. In Photoshop select the "Export to Multiple Sizes" from the Scripts menu

    Video Overview - http://youtu.be/_la4ErHBJ5o


Change Log
---------------------

    1.2.1
    - added option to preserve aspect ratio
    - set preserve aspect ratio to true by default

    1.2.0
    - set the format to GIF, JPEG, PNG, and BMP
    - set the quality from 1-100%
    - set the resample method. for example, BICUBICSMOOTHER
    - include / exclude the color profile

    1.1.2
    - added separator between custom size sets and built in size sets

    1.1.1
    - added more documentation in JSX file
    - changed customPlatform to use array.push()
    - removed writeln call when creating custom directories
    - added version number in JSX


Troubleshooting
---------------------

    * Photoshop crashes during export

    Things to try:
     - You may be low on diskspace. Check that you have enough free disk space. If you are using less than a few GBs free up more space
     - You may be doing too much at once. Disable any automation utilities such as ScriptingListener (in ~Photoshop/Plugins/Automate). These write to file with every change you make in Photoshop
     - You may be low on ram. Close all other images and try again
     - You may be low on ram. Close all other running programs and try again

    * Nothing happens when you run the script

     - If you added your own custom sizes you may have a typo that is causing an error. You can email the code you typed to me or you can start over from scratch and try again
     - The pop up window may be hidden. Check all available Photoshop windows. With Photoshop focused press ESC key to close the dialog and try again.




    Thanks for using Export to Multiple Sizes for Photoshop!

    Velara III
    sales@velara3.com
    support@velara3.com
    http://www.velara3.com
