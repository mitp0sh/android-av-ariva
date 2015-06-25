.class final Lcom/avira/android/blacklist/activities/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/activities/BLActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/a;->a:Lcom/avira/android/blacklist/activities/BLActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/activities/BLActivity;B)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/a;-><init>(Lcom/avira/android/blacklist/activities/BLActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 166
    const-string v1, "contact_data_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 167
    invoke-static {}, Lcom/avira/android/blacklist/d/t;->a()Lcom/avira/android/blacklist/d/t;

    move-result-object v1

    new-instance v2, Lcom/avira/android/blacklist/d/aa;

    sget-object v3, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-direct {v2, v0, v3}, Lcom/avira/android/blacklist/d/aa;-><init>(Lcom/avira/android/custom/h;Lcom/avira/android/custom/h;)V

    invoke-virtual {v1, v2}, Lcom/avira/android/blacklist/d/t;->a(Lcom/avira/android/blacklist/d/aa;)V

    .line 170
    :cond_0
    const-string v0, "activate_tab_tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/a;->a:Lcom/avira/android/blacklist/activities/BLActivity;

    invoke-static {v1, v0}, Lcom/avira/android/blacklist/activities/BLActivity;->a(Lcom/avira/android/blacklist/activities/BLActivity;Ljava/lang/String;)V

    .line 172
    return-void
.end method
