.class Lcom/crashlytics/android/Crashlytics$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$latch:Lcom/crashlytics/android/Crashlytics$OptInLatch;

.field final synthetic val$promptData:Lio/fabric/sdk/android/services/f/o;

.field final synthetic val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/Crashlytics$OptInLatch;Lcom/crashlytics/android/DialogStringResolver;Lio/fabric/sdk/android/services/f/o;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/Crashlytics$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/crashlytics/android/Crashlytics$5;->val$latch:Lcom/crashlytics/android/Crashlytics$OptInLatch;

    iput-object p4, p0, Lcom/crashlytics/android/Crashlytics$5;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    iput-object p5, p0, Lcom/crashlytics/android/Crashlytics$5;->val$promptData:Lio/fabric/sdk/android/services/f/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 964
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 966
    new-instance v1, Lcom/crashlytics/android/Crashlytics$5$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$5$1;-><init>(Lcom/crashlytics/android/Crashlytics$5;)V

    .line 974
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 978
    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    const/4 v4, 0x5

    # invokes: Lcom/crashlytics/android/Crashlytics;->dipsToPixels(FI)I
    invoke-static {v3, v2, v4}, Lcom/crashlytics/android/Crashlytics;->access$300(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v3

    .line 980
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/crashlytics/android/Crashlytics$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 981
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 982
    iget-object v5, p0, Lcom/crashlytics/android/Crashlytics$5;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    invoke-virtual {v5}, Lcom/crashlytics/android/DialogStringResolver;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v5, p0, Lcom/crashlytics/android/Crashlytics$5;->val$activity:Landroid/app/Activity;

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 984
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 986
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 988
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/crashlytics/android/Crashlytics$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 989
    iget-object v5, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    const/16 v6, 0xe

    # invokes: Lcom/crashlytics/android/Crashlytics;->dipsToPixels(FI)I
    invoke-static {v5, v2, v6}, Lcom/crashlytics/android/Crashlytics;->access$300(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v5

    iget-object v6, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    const/4 v7, 0x2

    # invokes: Lcom/crashlytics/android/Crashlytics;->dipsToPixels(FI)I
    invoke-static {v6, v2, v7}, Lcom/crashlytics/android/Crashlytics;->access$300(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v6

    iget-object v7, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    const/16 v8, 0xa

    # invokes: Lcom/crashlytics/android/Crashlytics;->dipsToPixels(FI)I
    invoke-static {v7, v2, v8}, Lcom/crashlytics/android/Crashlytics;->access$300(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v7

    iget-object v8, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    const/16 v9, 0xc

    # invokes: Lcom/crashlytics/android/Crashlytics;->dipsToPixels(FI)I
    invoke-static {v8, v2, v9}, Lcom/crashlytics/android/Crashlytics;->access$300(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v2

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 991
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 995
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics$5;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    invoke-virtual {v3}, Lcom/crashlytics/android/DialogStringResolver;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics$5;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    invoke-virtual {v3}, Lcom/crashlytics/android/DialogStringResolver;->getSendButtonTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics$5;->val$promptData:Lio/fabric/sdk/android/services/f/o;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/f/o;->d:Z

    if-eqz v1, :cond_0

    .line 999
    new-instance v1, Lcom/crashlytics/android/Crashlytics$5$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$5$2;-><init>(Lcom/crashlytics/android/Crashlytics$5;)V

    .line 1006
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics$5;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    invoke-virtual {v2}, Lcom/crashlytics/android/DialogStringResolver;->getCancelButtonTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics$5;->val$promptData:Lio/fabric/sdk/android/services/f/o;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/f/o;->f:Z

    if-eqz v1, :cond_1

    .line 1011
    new-instance v1, Lcom/crashlytics/android/Crashlytics$5$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$5$3;-><init>(Lcom/crashlytics/android/Crashlytics$5;)V

    .line 1019
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics$5;->val$stringResolver:Lcom/crashlytics/android/DialogStringResolver;

    invoke-virtual {v2}, Lcom/crashlytics/android/DialogStringResolver;->getAlwaysSendButtonTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1023
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1024
    return-void
.end method
