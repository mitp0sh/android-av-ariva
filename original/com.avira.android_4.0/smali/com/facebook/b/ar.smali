.class final Lcom/facebook/b/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/b/be;

.field final synthetic b:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/be;Lcom/facebook/b/an;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/facebook/b/ar;->a:Lcom/facebook/b/be;

    iput-object p2, p0, Lcom/facebook/b/ar;->b:Lcom/facebook/b/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/b/ar;->a:Lcom/facebook/b/be;

    iget-object v1, p0, Lcom/facebook/b/ar;->b:Lcom/facebook/b/an;

    invoke-interface {v0, v1}, Lcom/facebook/b/be;->a(Lcom/facebook/b/an;)V

    .line 259
    return-void
.end method
