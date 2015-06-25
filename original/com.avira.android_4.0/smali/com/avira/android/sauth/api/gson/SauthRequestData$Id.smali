.class Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sauthid:Ljava/lang/String;

.field private sauthtoken:Ljava/lang/String;

.field final synthetic this$0:Lcom/avira/android/sauth/api/gson/SauthRequestData;

.field private uid:Ljava/lang/String;

.field private uidType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/android/sauth/api/gson/SauthRequestData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;->this$0:Lcom/avira/android/sauth/api/gson/SauthRequestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;->uid:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;->uidType:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;->sauthid:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;->sauthtoken:Ljava/lang/String;

    .line 57
    return-void
.end method
