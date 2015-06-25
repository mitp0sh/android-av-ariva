.class final Lcom/avira/applock/common/web/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic a:Lcom/avira/applock/common/web/a;


# direct methods
.method constructor <init>(Lcom/avira/applock/common/web/a;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avira/applock/common/web/e;->a:Lcom/avira/applock/common/web/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 74
    iget-object v0, p0, Lcom/avira/applock/common/web/e;->a:Lcom/avira/applock/common/web/a;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 81
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    new-instance v0, Lcom/avira/applock/common/web/HttpErrorResponse;

    const-string v1, "error"

    const-string v2, "unknown error"

    invoke-direct {v0, v3, v1, v2}, Lcom/avira/applock/common/web/HttpErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lcom/avira/applock/common/web/HttpErrorResponse;

    const-string v1, "error"

    const-string v2, "unknown error"

    invoke-direct {v0, v3, v1, v2}, Lcom/avira/applock/common/web/HttpErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/avira/applock/common/web/e;->a:Lcom/avira/applock/common/web/a;

    invoke-interface {v1, v0}, Lcom/avira/applock/common/web/a;->a(Lcom/avira/applock/common/web/HttpErrorResponse;)V

    goto :goto_0

    .line 94
    :cond_3
    :try_start_0
    new-instance v0, Lcom/google/b/j;

    invoke-direct {v0}, Lcom/google/b/j;-><init>()V

    const-class v2, Lcom/avira/applock/common/web/HttpErrorResponse;

    invoke-virtual {v0, v1, v2}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/common/web/HttpErrorResponse;
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    new-instance v0, Lcom/avira/applock/common/web/HttpErrorResponse;

    const-string v2, "error"

    invoke-direct {v0, v3, v2, v1}, Lcom/avira/applock/common/web/HttpErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
