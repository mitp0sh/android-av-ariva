.class public final Lcom/avira/android/sauth/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "STHAPI"


# instance fields
.field private a:Lcom/avira/android/sauth/api/b;

.field private b:Lcom/avira/android/common/web/o;

.field private c:Lcom/google/b/j;


# direct methods
.method public constructor <init>(Lcom/avira/android/sauth/api/b;Lcom/avira/android/common/web/o;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/avira/android/sauth/api/a;->a:Lcom/avira/android/sauth/api/b;

    .line 37
    iput-object p2, p0, Lcom/avira/android/sauth/api/a;->b:Lcom/avira/android/common/web/o;

    .line 38
    new-instance v0, Lcom/google/b/j;

    invoke-direct {v0}, Lcom/google/b/j;-><init>()V

    iput-object v0, p0, Lcom/avira/android/sauth/api/a;->c:Lcom/google/b/j;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/sauth/api/gson/SauthResponseData;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/avira/android/sauth/api/gson/SauthRequestData;

    iget-object v1, p0, Lcom/avira/android/sauth/api/a;->a:Lcom/avira/android/sauth/api/b;

    invoke-direct {v0, v1}, Lcom/avira/android/sauth/api/gson/SauthRequestData;-><init>(Lcom/avira/android/sauth/api/b;)V

    .line 50
    iget-object v1, p0, Lcom/avira/android/sauth/api/a;->c:Lcom/google/b/j;

    const-class v2, Lcom/avira/android/sauth/api/gson/SauthRequestData;

    invoke-virtual {v1, v0, v2}, Lcom/google/b/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/avira/android/sauth/api/a;->b:Lcom/avira/android/common/web/o;

    iget-object v1, p0, Lcom/avira/android/sauth/api/a;->a:Lcom/avira/android/sauth/api/b;

    invoke-virtual {v1}, Lcom/avira/android/sauth/api/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/sauth/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/avira/android/sauth/api/gson/SauthResponseData;

    invoke-virtual {v1, v0, v2}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/sauth/api/gson/SauthResponseData;
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "STHAPI"

    const-string v3, "Malformed Json Data "

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
