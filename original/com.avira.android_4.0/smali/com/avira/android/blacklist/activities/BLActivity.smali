.class public Lcom/avira/android/blacklist/activities/BLActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/utilities/ah;


# static fields
.field public static final ACTIVATE_TAB_TAG:Ljava/lang/String; = "activate_tab_tag"

.field public static final BLOCKED_NOTIFICATION_ADDED_ACTION:Ljava/lang/String; = "com.avira.android.action.BLOCKED_NOTIFICATION_ADDED"

.field public static final SHOW_TAB_ACTION:Ljava/lang/String; = "com.avira.android.action.SHOW_TAB"


# instance fields
.field private a:Lcom/avira/android/utilities/ag;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/avira/android/blacklist/activities/b;",
            "Lcom/avira/android/utilities/ai;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/avira/android/blacklist/activities/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/activities/a;-><init>(Lcom/avira/android/blacklist/activities/BLActivity;B)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->c:Landroid/content/BroadcastReceiver;

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/BLActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :try_start_0
    invoke-static {p1}, Lcom/avira/android/blacklist/activities/b;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/activities/b;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/utilities/ai;

    .line 147
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    invoke-virtual {v0}, Lcom/avira/android/utilities/ai;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avira/android/utilities/ag;->showTab(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 84
    instance-of v0, p1, Lcom/avira/android/blacklist/activities/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/avira/android/blacklist/activities/b;

    sget-object v0, Lcom/avira/android/blacklist/activities/b;->History:Lcom/avira/android/blacklist/activities/b;

    if-ne p1, v0, :cond_0

    .line 86
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    invoke-static {}, Lcom/avira/android/blacklist/d/a;->d()V

    .line 88
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 58
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLActivity;->setContentView(I)V

    .line 61
    new-instance v0, Lcom/avira/android/utilities/ag;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avira/android/utilities/ag;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    .line 62
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    invoke-virtual {v0, p0}, Lcom/avira/android/utilities/ag;->setOnTabHostSelectionChanged(Lcom/avira/android/utilities/ah;)V

    .line 64
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    const v1, 0x7f080227

    invoke-virtual {p0, v1}, Lcom/avira/android/blacklist/activities/BLActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avira/android/blacklist/b/a;

    invoke-direct {v2}, Lcom/avira/android/blacklist/b/a;-><init>()V

    sget-object v3, Lcom/avira/android/blacklist/activities/b;->Blacklist:Lcom/avira/android/blacklist/activities/b;

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/avira/android/utilities/ag;->createTabItem(Ljava/lang/String;ZLcom/avira/android/utilities/af;Ljava/lang/Object;)Lcom/avira/android/utilities/ai;

    move-result-object v1

    .line 66
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    const v2, 0x7f080226

    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/activities/BLActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avira/android/blacklist/b/d;

    invoke-direct {v3}, Lcom/avira/android/blacklist/b/d;-><init>()V

    sget-object v4, Lcom/avira/android/blacklist/activities/b;->History:Lcom/avira/android/blacklist/activities/b;

    invoke-virtual {v0, v2, v6, v3, v4}, Lcom/avira/android/utilities/ag;->createTabItem(Ljava/lang/String;ZLcom/avira/android/utilities/af;Ljava/lang/Object;)Lcom/avira/android/utilities/ai;

    move-result-object v0

    .line 69
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/avira/android/blacklist/activities/BLActivity;->b:Ljava/util/HashMap;

    .line 70
    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLActivity;->b:Ljava/util/HashMap;

    sget-object v3, Lcom/avira/android/blacklist/activities/b;->Blacklist:Lcom/avira/android/blacklist/activities/b;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLActivity;->b:Ljava/util/HashMap;

    sget-object v3, Lcom/avira/android/blacklist/activities/b;->History:Lcom/avira/android/blacklist/activities/b;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 74
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 76
    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    invoke-virtual {v1}, Lcom/avira/android/utilities/ai;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/utilities/ag;->showTab(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 110
    const-string v0, "activate_tab_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v0, "activate_tab_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 115
    sget-object v1, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    .line 116
    if-eqz v3, :cond_1

    .line 118
    const-string v0, "contact_data_tag"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 119
    if-eqz v0, :cond_1

    .line 122
    const-string v1, "contact_data_tag"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    :goto_0
    invoke-static {}, Lcom/avira/android/blacklist/d/t;->a()Lcom/avira/android/blacklist/d/t;

    move-result-object v1

    new-instance v3, Lcom/avira/android/blacklist/d/aa;

    sget-object v4, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-direct {v3, v0, v4}, Lcom/avira/android/blacklist/d/aa;-><init>(Lcom/avira/android/custom/h;Lcom/avira/android/custom/h;)V

    invoke-virtual {v1, v3}, Lcom/avira/android/blacklist/d/t;->a(Lcom/avira/android/blacklist/d/aa;)V

    .line 127
    invoke-direct {p0, v2}, Lcom/avira/android/blacklist/activities/BLActivity;->a(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 131
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->c:Landroid/content/BroadcastReceiver;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avira/android/utilities/ag;->updateParentVisibility(Z)V

    .line 95
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 96
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->c:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.avira.android.action.SHOW_TAB"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 103
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLActivity;->a:Lcom/avira/android/utilities/ag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/utilities/ag;->updateParentVisibility(Z)V

    .line 104
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 105
    return-void
.end method
