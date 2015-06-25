.class public Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BLACKLIST_CONTACT_NAME_TAG:Ljava/lang/String; = "blacklistContactNameTag"

.field private static final BLACKLIST_HISTORY_ITEM_TAG:Ljava/lang/String; = "blacklistHistoryItemTag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avira/android/blacklist/model/BLHistoryItem;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string v1, "blacklistContactNameTag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "blacklistHistoryItemTag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e004f

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;->finish()V

    .line 54
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    const-string v0, "blacklistHistoryItemTag"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 39
    const-string v2, "blacklistContactNameTag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const v1, 0x7f0e008a

    invoke-virtual {p0, v1}, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v0, 0x7f0e007b

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
