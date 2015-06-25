.class final Lcom/avira/android/userprofile/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avira/android/userprofile/u;->a:Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avira/android/userprofile/u;->a:Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->setResult(I)V

    .line 69
    iget-object v0, p0, Lcom/avira/android/userprofile/u;->a:Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->finish()V

    .line 70
    return-void
.end method
