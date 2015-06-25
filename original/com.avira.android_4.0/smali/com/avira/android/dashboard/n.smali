.class final Lcom/avira/android/dashboard/n;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/m;


# direct methods
.method constructor <init>(Lcom/avira/android/dashboard/m;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/avira/android/dashboard/n;->a:Lcom/avira/android/dashboard/m;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    iget-object v2, p0, Lcom/avira/android/dashboard/n;->a:Lcom/avira/android/dashboard/m;

    invoke-static {v2}, Lcom/avira/android/dashboard/m;->a(Lcom/avira/android/dashboard/m;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string v1, "android.app.extra.ADD_EXPLANATION"

    iget-object v2, p0, Lcom/avira/android/dashboard/n;->a:Lcom/avira/android/dashboard/m;

    invoke-static {v2}, Lcom/avira/android/dashboard/m;->b(Lcom/avira/android/dashboard/m;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v2

    const v3, 0x7f080145

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/avira/android/dashboard/n;->a:Lcom/avira/android/dashboard/m;

    invoke-static {v1}, Lcom/avira/android/dashboard/m;->b(Lcom/avira/android/dashboard/m;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method
