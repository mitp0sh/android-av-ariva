.class final Lcom/avira/applock/e/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/avira/applock/b/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/applock/e/a;


# direct methods
.method private constructor <init>(Lcom/avira/applock/e/a;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/avira/applock/e/b;->a:Lcom/avira/applock/e/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/applock/e/a;B)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/avira/applock/e/b;-><init>(Lcom/avira/applock/e/a;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/avira/applock/e/b;->a:Lcom/avira/applock/e/a;

    invoke-static {v0}, Lcom/avira/applock/e/a;->b(Lcom/avira/applock/e/a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 464
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/avira/applock/e/b;->a:Lcom/avira/applock/e/a;

    invoke-static {v0}, Lcom/avira/applock/e/a;->c(Lcom/avira/applock/e/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/avira/applock/e/b;->a:Lcom/avira/applock/e/a;

    invoke-static {v0}, Lcom/avira/applock/e/a;->c(Lcom/avira/applock/e/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/avira/applock/e/b;->a:Lcom/avira/applock/e/a;

    invoke-static {v0}, Lcom/avira/applock/e/a;->d(Lcom/avira/applock/e/a;)Lcom/avira/applock/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/applock/a/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/avira/applock/e/b;->a:Lcom/avira/applock/e/a;

    invoke-static {v0}, Lcom/avira/applock/e/a;->e(Lcom/avira/applock/e/a;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/avira/applock/e/b;->a:Lcom/avira/applock/e/a;

    invoke-static {v0}, Lcom/avira/applock/e/a;->a(Lcom/avira/applock/e/a;)V

    .line 470
    return-void
.end method
