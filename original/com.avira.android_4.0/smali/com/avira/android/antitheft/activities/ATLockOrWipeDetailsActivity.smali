.class public Lcom/avira/android/antitheft/activities/ATLockOrWipeDetailsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# static fields
.field private static final LOCK_VIEW:I = 0x4

.field private static final SCREEN_VERSION:Ljava/lang/String; = "screen_version"

.field private static final WIPE_VIEW:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 24
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/avira/android/antitheft/activities/ATLockOrWipeDetailsActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    const-string v2, "screen_version"

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/avira/android/antitheft/activities/ATLockOrWipeDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "screen_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const v0, 0x7f030073

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATLockOrWipeDetailsActivity;->setContentView(I)V

    goto :goto_0

    .line 40
    :pswitch_1
    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATLockOrWipeDetailsActivity;->setContentView(I)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
