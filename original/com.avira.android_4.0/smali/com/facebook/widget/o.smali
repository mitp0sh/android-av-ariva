.class final Lcom/facebook/widget/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/b/co;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/widget/LoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/facebook/widget/o;->b:Lcom/facebook/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/widget/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/facebook/widget/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Z)Lcom/facebook/b/co;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 674
    check-cast p1, Lcom/facebook/b/co;

    iget-object v0, p0, Lcom/facebook/widget/o;->b:Lcom/facebook/widget/LoginButton;

    # invokes: Lcom/facebook/widget/LoginButton;->showNuxPerSettings(Lcom/facebook/b/co;)V
    invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->access$300(Lcom/facebook/widget/LoginButton;Lcom/facebook/b/co;)V

    return-void
.end method
