.class public final Lcom/avira/android/securebrowsing/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/securebrowsing/a/f;


# static fields
.field private static final TAG:Ljava/lang/String; = "URLCLDAPI"


# instance fields
.field private final a:Lcom/avira/android/common/web/o;

.field private final b:Lcom/avira/android/securebrowsing/a/e;

.field private final c:Lcom/avira/android/securebrowsing/a/c;


# direct methods
.method public constructor <init>(Lcom/avira/android/securebrowsing/a/e;Lcom/avira/android/common/web/o;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/avira/android/securebrowsing/a/d;->a:Lcom/avira/android/common/web/o;

    .line 24
    iput-object p1, p0, Lcom/avira/android/securebrowsing/a/d;->b:Lcom/avira/android/securebrowsing/a/e;

    .line 25
    new-instance v0, Lcom/avira/android/securebrowsing/a/c;

    invoke-direct {v0, p1, p2}, Lcom/avira/android/securebrowsing/a/c;-><init>(Lcom/avira/android/securebrowsing/a/e;Lcom/avira/android/common/web/o;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/a/d;->c:Lcom/avira/android/securebrowsing/a/c;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "URLCLDAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UrlCloudApi - checking url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/avira/android/securebrowsing/a/d;->c:Lcom/avira/android/securebrowsing/a/c;

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/a/c;->a()Lcom/avira/android/securebrowsing/a/b;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/avira/android/securebrowsing/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    .line 47
    :cond_0
    :goto_1
    return-object v0

    .line 34
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object v3, p0, Lcom/avira/android/securebrowsing/a/d;->b:Lcom/avira/android/securebrowsing/a/e;

    invoke-virtual {v3}, Lcom/avira/android/securebrowsing/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "query?session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/avira/android/securebrowsing/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Lcom/avira/android/securebrowsing/a/d;->a:Lcom/avira/android/common/web/o;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/avira/android/common/web/WebResult;->d()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1
.end method
