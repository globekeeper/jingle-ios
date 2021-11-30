# MXJingle

MXJingle is an SPM package containing sources adapted from [MatrixSDKExtensions/VoIP/Jingle](https://github.com/matrix-org/matrix-ios-sdk/tree/develop/MatrixSDKExtensions/VoIP/Jingle).

### API modifications

We had to expose the following public headers in MatrixSDK.h:
- "MXCallAudioSessionConfigurator.h"
- "MXCallStackCall.h"

The change is awaiting upstream approval [TBD]().
