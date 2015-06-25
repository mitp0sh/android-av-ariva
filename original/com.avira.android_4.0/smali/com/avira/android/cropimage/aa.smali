.class final Lcom/avira/android/cropimage/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/cropimage/aj;

.field final synthetic b:Z

.field final synthetic c:Lcom/avira/android/cropimage/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/ImageViewTouchBase;Lcom/avira/android/cropimage/aj;Z)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/avira/android/cropimage/aa;->c:Lcom/avira/android/cropimage/ImageViewTouchBase;

    iput-object p2, p0, Lcom/avira/android/cropimage/aa;->a:Lcom/avira/android/cropimage/aj;

    iput-boolean p3, p0, Lcom/avira/android/cropimage/aa;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/avira/android/cropimage/aa;->c:Lcom/avira/android/cropimage/ImageViewTouchBase;

    iget-object v1, p0, Lcom/avira/android/cropimage/aa;->a:Lcom/avira/android/cropimage/aj;

    iget-boolean v2, p0, Lcom/avira/android/cropimage/aa;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(Lcom/avira/android/cropimage/aj;Z)V

    .line 178
    return-void
.end method
