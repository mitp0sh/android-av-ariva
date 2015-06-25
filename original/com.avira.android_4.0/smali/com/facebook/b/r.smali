.class final Lcom/facebook/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/b/o;


# direct methods
.method constructor <init>(Lcom/facebook/b/o;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/facebook/b/r;->a:Lcom/facebook/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/b/r;->a:Lcom/facebook/b/o;

    invoke-static {v0}, Lcom/facebook/b/o;->b(Lcom/facebook/b/o;)V

    .line 274
    return-void
.end method
