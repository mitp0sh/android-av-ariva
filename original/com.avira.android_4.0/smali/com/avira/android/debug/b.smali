.class public final Lcom/avira/android/debug/b;
.super Lcom/avira/android/debug/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/avira/android/debug/c;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/debug/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v2

    .line 49
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/debug/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/avira/android/debug/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080263

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 53
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v2, v3, v4, v5}, Lcom/avira/android/blacklist/d/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/debug/b;->dismiss()V

    goto :goto_0

    .line 58
    :pswitch_1
    invoke-virtual {p0}, Lcom/avira/android/debug/b;->dismiss()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0100
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/b;->setContentView(I)V

    .line 30
    const-string v0, "Generate contact"

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    const v0, 0x7f0e00ff

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/debug/b;->a:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/debug/b;->b:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/avira/android/debug/b;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/debug/b;->c:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/avira/android/debug/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-super {p0, p1}, Lcom/avira/android/debug/c;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method
