.class public Lcom/avira/applock/activities/SetupCompletedActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 58
    sget v1, Lcom/avira/applock/d;->setupcompleted_button_layout:I

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/avira/applock/activities/SetupCompletedActivity;->finish()V

    .line 63
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/avira/applock/e;->setup_completed_activity:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/SetupCompletedActivity;->setContentView(I)V

    sget v0, Lcom/avira/applock/d;->setupcompleted_desc:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/SetupCompletedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/applock/activities/SetupCompletedActivity;->a:Landroid/widget/TextView;

    const-string v0, "user_registered_email_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/avira/applock/f;->setup_pin_completed_screen_desc_content:I

    invoke-virtual {p0, v1}, Lcom/avira/applock/activities/SetupCompletedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/applock/activities/SetupCompletedActivity;->a:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x12

    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/avira/applock/d;->setupcompleted_button_layout:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/SetupCompletedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
