.class Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private deviceManufacturer:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/avira/android/sauth/api/gson/SauthRequestData;


# direct methods
.method public constructor <init>(Lcom/avira/android/sauth/api/gson/SauthRequestData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;->this$0:Lcom/avira/android/sauth/api/gson/SauthRequestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;->deviceModel:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;->deviceManufacturer:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;->locale:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;->platform:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;->ssid:Ljava/lang/String;

    .line 84
    return-void
.end method
