.class final Lcom/avira/android/common/gcm/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/android/common/gcm/b;


# direct methods
.method constructor <init>(Lcom/avira/android/common/gcm/b;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/avira/android/common/gcm/c;->a:Lcom/avira/android/common/gcm/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/a;->a(Landroid/content/Context;)Lcom/google/android/gms/c/a;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->a()V

    .line 182
    iget-object v0, p0, Lcom/avira/android/common/gcm/c;->a:Lcom/avira/android/common/gcm/b;

    const-string v0, ""

    invoke-static {v0}, Lcom/avira/android/common/gcm/b;->a(Ljava/lang/String;)Z

    .line 183
    iget-object v0, p0, Lcom/avira/android/common/gcm/c;->a:Lcom/avira/android/common/gcm/b;

    invoke-static {v0}, Lcom/avira/android/common/gcm/b;->a(Lcom/avira/android/common/gcm/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uregister failed with error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/avira/android/common/gcm/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
