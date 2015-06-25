.class final Lcom/facebook/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/e;


# instance fields
.field final synthetic a:Lcom/facebook/widget/a;


# direct methods
.method constructor <init>(Lcom/facebook/widget/a;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v0, v0, Lcom/facebook/widget/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v0, v0, Lcom/facebook/widget/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 715
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->b()Lcom/facebook/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v1, v1, Lcom/facebook/widget/a;->c:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v2, v2, Lcom/facebook/widget/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/ay;->a(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v0, v0, Lcom/facebook/widget/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v0, v0, Lcom/facebook/widget/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 718
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->b()Lcom/facebook/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v1, v1, Lcom/facebook/widget/a;->c:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/a;

    iget-object v2, v2, Lcom/facebook/widget/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/ay;->b(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V

    .line 721
    :cond_1
    return-void
.end method
