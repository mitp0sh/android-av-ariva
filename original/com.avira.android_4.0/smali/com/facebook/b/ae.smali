.class final Lcom/facebook/b/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/b/ag;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/b/ag;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/facebook/b/ae;->a:Landroid/content/Context;

    .line 357
    iput-object p2, p0, Lcom/facebook/b/ae;->b:Lcom/facebook/b/ag;

    .line 358
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/b/ae;->b:Lcom/facebook/b/ag;

    iget-object v1, p0, Lcom/facebook/b/ae;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ag;Landroid/content/Context;)V

    .line 363
    return-void
.end method
