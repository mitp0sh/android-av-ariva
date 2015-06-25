.class final Lcom/avira/applock/common/web/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/applock/common/web/a;


# direct methods
.method constructor <init>(Lcom/avira/applock/common/web/a;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/avira/applock/common/web/d;->a:Lcom/avira/applock/common/web/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 52
    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_1

    const-string v0, "HttpServerRequest"

    const-string v1, "response was null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[response] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/avira/applock/common/web/d;->a:Lcom/avira/applock/common/web/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/common/web/d;->a:Lcom/avira/applock/common/web/a;

    invoke-interface {v0, p1}, Lcom/avira/applock/common/web/a;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
