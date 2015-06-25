.class final Lcom/facebook/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/i;

.field final synthetic c:Lcom/facebook/j;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/i;Lcom/facebook/j;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/facebook/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/f;->b:Lcom/facebook/i;

    iput-object p3, p0, Lcom/facebook/f;->c:Lcom/facebook/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/facebook/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/f;->b:Lcom/facebook/i;

    invoke-static {v0, v1}, Lcom/facebook/c;->a(Landroid/content/Context;Lcom/facebook/i;)Lcom/facebook/p;

    move-result-object v0

    .line 709
    iget-object v1, p0, Lcom/facebook/f;->c:Lcom/facebook/j;

    invoke-virtual {v0, v1}, Lcom/facebook/p;->a(Lcom/facebook/j;)V

    .line 710
    invoke-static {}, Lcom/facebook/c;->e()V

    .line 711
    return-void
.end method
