.class final Lcom/facebook/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bk;


# instance fields
.field final synthetic a:Lcom/facebook/bl;


# direct methods
.method constructor <init>(Lcom/facebook/bl;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/facebook/bg;->a:Lcom/facebook/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bx;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/bg;->a:Lcom/facebook/bl;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/facebook/bg;->a:Lcom/facebook/bl;

    const-class v0, Lcom/facebook/c/j;

    invoke-virtual {p1, v0}, Lcom/facebook/bx;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/j;

    invoke-interface {v1, v0, p1}, Lcom/facebook/bl;->a(Lcom/facebook/c/j;Lcom/facebook/bx;)V

    .line 283
    :cond_0
    return-void
.end method
