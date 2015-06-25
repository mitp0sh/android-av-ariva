.class final Lcom/avira/android/userprofile/t;
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
    .line 49
    iput-object p1, p0, Lcom/avira/android/userprofile/t;->a:Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avira/android/userprofile/t;->a:Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->finish()V

    .line 54
    return-void
.end method
