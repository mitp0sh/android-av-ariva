.class public Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXISTING_CONTACT_DATA_TAG:Ljava/lang/String; = "existing_contact_data_tag"

.field static final IMPORT_CONTACT_NAME:Ljava/lang/String; = "import_contact_name"

.field static final IMPORT_CONTACT_NUMBER:Ljava/lang/String; = "import_contact_number"

.field static final NEW_CONTACT_DATA_TAG:Ljava/lang/String; = "new_contact_data_tag"

.field static final REQUEST_CODE:I = 0x3e8


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private final f:Lcom/avira/android/blacklist/d/h;

.field private g:Lcom/avira/android/blacklist/model/BLContact;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 51
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->f:Lcom/avira/android/blacklist/d/h;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;)Lcom/avira/android/blacklist/model/BLContact;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 310
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->setResult(I)V

    .line 313
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->finish()V

    .line 316
    iget-boolean v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->h:Z

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 320
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;Lcom/avira/android/blacklist/model/BLContact;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->f:Lcom/avira/android/blacklist/d/h;

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/d/h;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 149
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    .line 154
    iget-object v4, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->b:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 178
    :goto_1
    return-void

    .line 166
    :cond_1
    sget-object v0, Lcom/avira/android/blacklist/activities/f;->$SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I

    invoke-virtual {p3}, Lcom/avira/android/blacklist/d/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 122
    :sswitch_0
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->finish()V

    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    iget-object v4, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->f:Lcom/avira/android/blacklist/d/h;

    iget-object v7, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v4, v2, v5, v7}, Lcom/avira/android/blacklist/d/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/model/BLContact;)Lcom/avira/android/blacklist/d/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avira/android/blacklist/d/k;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    const v4, 0x7f080258

    invoke-virtual {p0, v4}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080256

    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v7, Lcom/avira/android/custom/aa;->ErrorIcon:Lcom/avira/android/custom/aa;

    sget-object v7, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/avira/android/blacklist/d/k;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f080259

    invoke-virtual {p0, v7}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/avira/android/blacklist/d/k;->c()Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/avira/android/blacklist/d/k;->c()Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->i:Z

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lcom/avira/android/blacklist/d/k;->c()Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v4

    iget-object v7, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v7}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_5
    const v4, 0x7f080257

    invoke-virtual {p0, v4}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->f:Lcom/avira/android/blacklist/d/h;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v5, v0}, Lcom/avira/android/blacklist/d/h;->a(JLjava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    :goto_3
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->f:Lcom/avira/android/blacklist/d/h;

    invoke-virtual {v1, v2, v5, v0}, Lcom/avira/android/blacklist/d/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    goto :goto_3

    .line 130
    :sswitch_2
    const v0, 0x7f08022e

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f08024e

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v4}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/avira/android/custom/x;->DeleteCancelButtons:Lcom/avira/android/custom/x;

    sget-object v7, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-static/range {v2 .. v7}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/avira/android/blacklist/activities/e;

    invoke-direct {v1, p0}, Lcom/avira/android/blacklist/activities/e;-><init>(Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_0

    :cond_8
    move v1, v6

    move-object v4, v3

    goto/16 :goto_2

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e004f -> :sswitch_0
        0x7f0e005d -> :sswitch_1
        0x7f0e005e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0e005e

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->setContentView(I)V

    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0e005a

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->c:Landroid/widget/RadioButton;

    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->d:Landroid/widget/RadioButton;

    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->e:Landroid/widget/RadioButton;

    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e005d

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/avira/android/utilities/ac;

    invoke-direct {v1}, Lcom/avira/android/utilities/ac;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f080318

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "existing_contact_data_tag"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->i:Z

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->g:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->c()Lcom/avira/android/blacklist/model/BLNumber;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLNumber;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLNumber;->b()Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v0, "import_contact_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->j:Ljava/lang/String;

    const-string v0, "import_contact_number"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "new_contact_data_tag"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->h:Z

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->j:Ljava/lang/String;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-direct {p0, v1, v0, v2}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    invoke-virtual {p0, v7}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
