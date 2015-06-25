.class final Lcom/avira/android/cropimage/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/cropimage/CropImage;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/CropImage;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/avira/android/cropimage/f;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/avira/android/cropimage/f;->a:Lcom/avira/android/cropimage/CropImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/avira/android/cropimage/CropImage;->setResult(I)V

    .line 191
    iget-object v0, p0, Lcom/avira/android/cropimage/f;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/CropImage;->finish()V

    .line 192
    return-void
.end method
