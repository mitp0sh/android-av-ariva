.class public final Lcom/avira/applock/common/b/a;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final POPUP_MENU_TAG:Ljava/lang/String; = "popup_menu_tag"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Lcom/avira/applock/common/b/b;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/avira/applock/common/b/b;[Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 43
    invoke-virtual {p0, v1}, Lcom/avira/applock/common/b/a;->setCancelable(Z)V

    .line 44
    sget v0, Lcom/avira/applock/g;->DialogNoTitle:I

    invoke-virtual {p0, v1, v0}, Lcom/avira/applock/common/b/a;->setStyle(II)V

    .line 45
    iput-object p2, p0, Lcom/avira/applock/common/b/a;->a:[Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/avira/applock/common/b/a;->b:Lcom/avira/applock/common/b/b;

    .line 47
    iput p3, p0, Lcom/avira/applock/common/b/a;->f:I

    .line 48
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    sget v0, Lcom/avira/applock/e;->popup_menu_layout:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/b/a;->e:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/avira/applock/common/b/a;->e:Landroid/view/View;

    sget v1, Lcom/avira/applock/d;->popup_menu_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/applock/common/b/a;->c:Landroid/widget/ListView;

    .line 55
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/avira/applock/common/b/a;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/avira/applock/e;->popup_menu_list_item:I

    iget-object v3, p0, Lcom/avira/applock/common/b/a;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avira/applock/common/b/a;->d:Landroid/widget/ArrayAdapter;

    .line 56
    iget-object v0, p0, Lcom/avira/applock/common/b/a;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/applock/common/b/a;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/avira/applock/common/b/a;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/avira/applock/common/b/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Lcom/avira/applock/common/b/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/avira/applock/common/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avira/applock/b;->bubble_menu_paddingX:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/avira/applock/common/b/a;->f:I

    invoke-virtual {p0}, Lcom/avira/applock/common/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/avira/applock/b;->bubble_menu_paddingY:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 64
    iget-object v0, p0, Lcom/avira/applock/common/b/a;->e:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/avira/applock/common/b/a;->b:Lcom/avira/applock/common/b/b;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/avira/applock/common/b/a;->b:Lcom/avira/applock/common/b/b;

    invoke-interface {v0, p3}, Lcom/avira/applock/common/b/b;->c(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/avira/applock/common/b/a;->dismiss()V

    .line 84
    return-void
.end method
