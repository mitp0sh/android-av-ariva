.class public abstract Lcom/avira/android/custom/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/avira/android/custom/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 37
    return-void
.end method

.method protected static a(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.action.APPLICATION_TERMINATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 124
    const v0, 0x7f0e01e4

    invoke-virtual {p0, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    new-instance v0, Lcom/avira/android/custom/b;

    invoke-direct {v0, p0}, Lcom/avira/android/custom/b;-><init>(Lcom/avira/android/custom/BaseFragmentActivity;)V

    .line 135
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lcom/avira/android/custom/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/avira/android/custom/c;-><init>(Lcom/avira/android/custom/BaseFragmentActivity;Ljava/lang/Class;Lcom/avira/applock/common/a/b;)V

    .line 168
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v2, 0x7f080144

    invoke-virtual {p0, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/avira/android/device/g;

    invoke-direct {v0, v1}, Lcom/avira/android/device/g;-><init>(Lcom/avira/android/utilities/y;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/device/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v1, Lcom/avira/applock/common/a/c;

    const v2, 0x7f080140

    invoke-virtual {p0, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080156

    invoke-virtual {p0, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/avira/applock/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 178
    invoke-virtual {v1, v0}, Lcom/avira/applock/common/a/c;->a(Lcom/avira/applock/common/a/b;)V

    .line 179
    invoke-virtual {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avira/applock/common/a/c;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method public d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onAttachedToWindow()V

    .line 106
    invoke-virtual {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/avira/android/custom/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/custom/d;-><init>(Lcom/avira/android/custom/BaseFragmentActivity;B)V

    iput-object v0, p0, Lcom/avira/android/custom/BaseFragmentActivity;->a:Lcom/avira/android/custom/d;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.action.APPLICATION_TERMINATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/avira/android/custom/BaseFragmentActivity;->a:Lcom/avira/android/custom/d;

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avira/android/custom/BaseFragmentActivity;->a:Lcom/avira/android/custom/d;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 75
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/b/a;->a(Ljava/lang/Class;)V

    .line 68
    return-void
.end method
