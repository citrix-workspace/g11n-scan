# g11n-scan
This repo hosts the G11n scanner code and actions, and this action is specially customized for IWS bundle.
## Supported g11n issues detection

###Localized resource file not translated
*The localized resource file is the same as English resource file, which represents that it is not translated.
###Key mismatch between English and localized resource files 
* A string definition is missing in localized resource file when compared with the corresponding English resource file.
* A string is found in localized resource file but not in corresponding English resource file.

###Resource file encoding issue
*The encoding of the resource files should be correct, otherwise fail the workflow.
###Unmatched placeholders
*Unmatched placeholders found in localized resource file when comparing it with corresponding English resource file, placeholders mean the format arguments used to format strings.

## How to use this action
'''
  - name: G11n Radar
    uses: citrix-workspace/g11n-scan@master
    with:
      repoToken: ${{secrets.GITHUB_TOKEN}}
      skip: 'bundles/coming_soon/,bundles/dip/Citrix/com.sapho.services.zendesk.ZendeskService/'
'''
