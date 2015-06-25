.class public Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/avira/android/blacklist/d/ab;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 88
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLAddContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->finish()V

    goto :goto_0

    .line 91
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 94
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLAddSmsLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 97
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v1, "new_contact_data_tag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 102
    :pswitch_5
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->a:Lcom/avira/android/blacklist/d/ab;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/ab;->a(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 105
    :pswitch_6
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->a:Lcom/avira/android/blacklist/d/ab;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/ab;->b(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e004f
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0054

    .line 29
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/avira/android/blacklist/d/ab;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->a:Lcom/avira/android/blacklist/d/ab;

    const v0, 0x7f0e0050

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->c:Landroid/widget/Button;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 59
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->a:Lcom/avira/android/blacklist/d/ab;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->a:Lcom/avira/android/blacklist/d/ab;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    :goto_1
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
