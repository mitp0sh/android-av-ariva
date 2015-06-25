.class final Lcom/facebook/ci;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/by;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/by;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/facebook/ci;->a:Lcom/facebook/by;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1860
    iput-object p2, p0, Lcom/facebook/ci;->b:Ljava/lang/String;

    .line 1861
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ci;->c:Landroid/content/Context;

    .line 1862
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1867
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ci;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ci;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/cu;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/bx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    const-string v1, "Facebook-publish"

    invoke-static {v1, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1855
    invoke-direct {p0}, Lcom/facebook/ci;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1855
    iget-object v1, p0, Lcom/facebook/ci;->a:Lcom/facebook/by;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ci;->a:Lcom/facebook/by;

    invoke-static {v0}, Lcom/facebook/by;->f(Lcom/facebook/by;)Lcom/facebook/ci;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
