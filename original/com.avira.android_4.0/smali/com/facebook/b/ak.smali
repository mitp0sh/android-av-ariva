.class public final Lcom/facebook/b/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/b/ah;

.field private b:Ljava/lang/Exception;

.field private c:Z

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/facebook/b/ah;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/b/ak;->a:Lcom/facebook/b/ah;

    .line 30
    iput-object p2, p0, Lcom/facebook/b/ak;->b:Ljava/lang/Exception;

    .line 31
    iput-object p4, p0, Lcom/facebook/b/ak;->d:Landroid/graphics/Bitmap;

    .line 32
    iput-boolean p3, p0, Lcom/facebook/b/ak;->c:Z

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/b/ah;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/b/ak;->a:Lcom/facebook/b/ah;

    return-object v0
.end method

.method public final b()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/b/ak;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/b/ak;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/b/ak;->c:Z

    return v0
.end method
