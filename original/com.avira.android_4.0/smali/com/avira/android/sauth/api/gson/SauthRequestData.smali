.class public Lcom/avira/android/sauth/api/gson/SauthRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;

.field private info:Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/android/sauth/api/b;)V
    .locals 7

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData;->language:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->f()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;-><init>(Lcom/avira/android/sauth/api/gson/SauthRequestData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData;->id:Lcom/avira/android/sauth/api/gson/SauthRequestData$Id;

    .line 31
    new-instance v0, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/avira/android/sauth/api/b;->k()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;-><init>(Lcom/avira/android/sauth/api/gson/SauthRequestData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/sauth/api/gson/SauthRequestData;->info:Lcom/avira/android/sauth/api/gson/SauthRequestData$Info;

    .line 33
    return-void
.end method
