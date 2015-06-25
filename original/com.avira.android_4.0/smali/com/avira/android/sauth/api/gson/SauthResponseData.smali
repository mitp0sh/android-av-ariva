.class public Lcom/avira/android/sauth/api/gson/SauthResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static OK:Ljava/lang/String;


# instance fields
.field private sauthid:Ljava/lang/String;

.field private sauthtoken:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "OK"

    sput-object v0, Lcom/avira/android/sauth/api/gson/SauthResponseData;->OK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSauthId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avira/android/sauth/api/gson/SauthResponseData;->sauthid:Ljava/lang/String;

    return-object v0
.end method

.method public getSauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avira/android/sauth/api/gson/SauthResponseData;->sauthtoken:Ljava/lang/String;

    return-object v0
.end method

.method public isStatusOk()Z
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/avira/android/sauth/api/gson/SauthResponseData;->OK:Ljava/lang/String;

    iget-object v1, p0, Lcom/avira/android/sauth/api/gson/SauthResponseData;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
