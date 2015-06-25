.class final Lcom/facebook/b/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/b/ag;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/b/ag;Z)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/facebook/b/ad;->a:Landroid/content/Context;

    .line 341
    iput-object p2, p0, Lcom/facebook/b/ad;->b:Lcom/facebook/b/ag;

    .line 342
    iput-boolean p3, p0, Lcom/facebook/b/ad;->c:Z

    .line 343
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/facebook/b/ad;->b:Lcom/facebook/b/ag;

    iget-object v1, p0, Lcom/facebook/b/ad;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/b/ad;->c:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ag;Landroid/content/Context;Z)V

    .line 348
    return-void
.end method
