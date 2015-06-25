.class final Lcom/facebook/b/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/b/ah;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Z

.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic e:Lcom/facebook/b/aj;


# direct methods
.method constructor <init>(Lcom/facebook/b/ah;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/b/aj;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/b/ac;->a:Lcom/facebook/b/ah;

    iput-object p2, p0, Lcom/facebook/b/ac;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/facebook/b/ac;->c:Z

    iput-object p4, p0, Lcom/facebook/b/ac;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/facebook/b/ac;->e:Lcom/facebook/b/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 165
    new-instance v0, Lcom/facebook/b/ak;

    iget-object v1, p0, Lcom/facebook/b/ac;->a:Lcom/facebook/b/ah;

    iget-object v2, p0, Lcom/facebook/b/ac;->b:Ljava/lang/Exception;

    iget-boolean v3, p0, Lcom/facebook/b/ac;->c:Z

    iget-object v4, p0, Lcom/facebook/b/ac;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/b/ak;-><init>(Lcom/facebook/b/ah;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    .line 170
    iget-object v1, p0, Lcom/facebook/b/ac;->e:Lcom/facebook/b/aj;

    invoke-interface {v1, v0}, Lcom/facebook/b/aj;->a(Lcom/facebook/b/ak;)V

    .line 171
    return-void
.end method
