.class final Lcom/facebook/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ah;


# instance fields
.field final synthetic a:Lcom/facebook/q;


# direct methods
.method constructor <init>(Lcom/facebook/q;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/facebook/s;->a:Lcom/facebook/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/s;->a:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0}, Lcom/facebook/y;->a()Lcom/facebook/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ah;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/s;->a:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0}, Lcom/facebook/y;->a()Lcom/facebook/ah;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ah;->a(Landroid/content/Intent;I)V

    .line 330
    return-void
.end method
