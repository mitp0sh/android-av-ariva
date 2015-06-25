.class final Lcom/facebook/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/b/l;


# direct methods
.method constructor <init>(Lcom/facebook/b/l;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/b/n;->a:Lcom/facebook/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/b/n;->a:Lcom/facebook/b/l;

    invoke-static {v0}, Lcom/facebook/b/l;->a(Lcom/facebook/b/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/facebook/b/n;->a:Lcom/facebook/b/l;

    invoke-static {v0}, Lcom/facebook/b/l;->b(Lcom/facebook/b/l;)V

    .line 170
    :cond_0
    return-void
.end method
