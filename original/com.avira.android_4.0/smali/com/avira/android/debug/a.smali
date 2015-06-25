.class public final Lcom/avira/android/debug/a;
.super Lcom/avira/android/debug/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private final e:Lcom/avira/android/blacklist/d/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avira/android/blacklist/d/j;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/avira/android/debug/c;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/avira/android/debug/a;->e:Lcom/avira/android/blacklist/d/j;

    .line 29
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/debug/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 54
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/avira/android/debug/a;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/avira/android/blacklist/d/h;->a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v3

    .line 57
    if-nez v3, :cond_0

    .line 59
    sget-object v3, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v2, v2, v3}, Lcom/avira/android/blacklist/d/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    .line 61
    :cond_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/debug/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avira/android/debug/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080263

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v2

    .line 65
    iget-object v0, p0, Lcom/avira/android/debug/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avira/android/blacklist/d/a;->a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_3

    .line 69
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 71
    sget-object v4, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    iget-object v5, p0, Lcom/avira/android/debug/a;->e:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v4, v5}, Lcom/avira/android/blacklist/d/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/avira/android/blacklist/model/BLContact;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/avira/android/debug/a;->e:Lcom/avira/android/blacklist/d/j;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_2
    sget-object v4, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    iget-object v5, p0, Lcom/avira/android/debug/a;->e:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v4, v5}, Lcom/avira/android/blacklist/d/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/avira/android/blacklist/model/BLContact;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/avira/android/debug/a;->e:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;)V

    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/avira/android/debug/a;->dismiss()V

    goto/16 :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {p0}, Lcom/avira/android/debug/a;->dismiss()V

    goto/16 :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x7f0e0100
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/a;->setContentView(I)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Generate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/debug/a;->e:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    const v0, 0x7f0e0102

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/debug/a;->a:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f0e0103

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/debug/a;->b:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/debug/a;->c:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/avira/android/debug/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/debug/a;->d:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/avira/android/debug/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-super {p0, p1}, Lcom/avira/android/debug/c;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method
