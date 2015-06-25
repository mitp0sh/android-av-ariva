.class public Landroid/support/v7/internal/view/menu/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/a/a;


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Landroid/view/View;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/res/Resources;

.field private f:Z

.field private g:Z

.field private h:Landroid/support/v7/internal/view/menu/p;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:I

.field private p:Landroid/view/ContextMenu$ContextMenuInfo;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/internal/view/menu/ad;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Landroid/support/v7/internal/view/menu/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/view/menu/o;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v1, p0, Landroid/support/v7/internal/view/menu/o;->o:I

    .line 142
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->q:Z

    .line 144
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->r:Z

    .line 146
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->s:Z

    .line 148
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->t:Z

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->u:Ljava/util/ArrayList;

    .line 152
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 193
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->d:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->j:Ljava/util/ArrayList;

    .line 199
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->k:Z

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->l:Ljava/util/ArrayList;

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->m:Ljava/util/ArrayList;

    .line 203
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->n:Z

    .line 205
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->g:Z

    .line 206
    return-void

    :cond_0
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 791
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 792
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->b()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 793
    add-int/lit8 v0, v1, 0x1

    .line 797
    :goto_1
    return v0

    .line 790
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 797
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/s;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 871
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/o;->u:Ljava/util/ArrayList;

    .line 872
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 873
    invoke-direct {p0, v5, p1, p2}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 875
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 906
    :cond_0
    :goto_0
    return-object v0

    .line 879
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 880
    new-instance v7, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v7}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 882
    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 885
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 886
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 887
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    goto :goto_0

    .line 890
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->a()Z

    move-result v9

    move v3, v4

    .line 893
    :goto_1
    if-ge v3, v8, :cond_7

    .line 894
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 895
    if-eqz v9, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getAlphabeticShortcut()C

    move-result v1

    .line 897
    :goto_2
    iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v10, v4

    if-ne v1, v10, :cond_3

    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_0

    :cond_3
    iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-ne v1, v10, :cond_4

    and-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_0

    :cond_4
    if-eqz v9, :cond_5

    const/16 v10, 0x8

    if-ne v1, v10, :cond_5

    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    .line 893
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 895
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getNumericShortcut()C

    move-result v1

    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 906
    goto :goto_0
.end method

.method private a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 400
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    sget-object v1, Landroid/support/v7/internal/view/menu/o;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "order does not contain a valid category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Landroid/support/v7/internal/view/menu/o;->sCategoryToOrder:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    or-int v5, v0, v1

    .line 402
    new-instance v0, Landroid/support/v7/internal/view/menu/s;

    iget v7, p0, Landroid/support/v7/internal/view/menu/o;->o:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/support/v7/internal/view/menu/o;IIIILjava/lang/CharSequence;I)V

    .line 405
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->p:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->p:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 410
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 411
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 413
    return-object v0
.end method

.method private a(IZ)V
    .locals 1

    .prologue
    .line 521
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 527
    if-eqz p2, :cond_0

    .line 528
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1154
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    .line 1156
    if-eqz p3, :cond_0

    .line 1157
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/o;->c:Landroid/view/View;

    .line 1160
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->a:Ljava/lang/CharSequence;

    .line 1161
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->b:Landroid/graphics/drawable/Drawable;

    .line 1180
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 1181
    return-void

    .line 1163
    :cond_0
    if-eqz p1, :cond_1

    .line 1166
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->a:Ljava/lang/CharSequence;

    .line 1169
    :cond_1
    if-eqz p2, :cond_2

    .line 1172
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/o;->b:Landroid/graphics/drawable/Drawable;

    .line 1176
    :cond_2
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->c:Landroid/view/View;

    goto :goto_0
.end method

.method private a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v10, 0x43

    const/4 v3, 0x0

    .line 825
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->a()Z

    move-result v4

    .line 826
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 827
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 829
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    .line 831
    if-nez v0, :cond_1

    if-eq p2, v10, :cond_1

    .line 855
    :cond_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    .line 837
    :goto_0
    if-ge v2, v7, :cond_0

    .line 838
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 839
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/o;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 843
    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getAlphabeticShortcut()C

    move-result v1

    .line 845
    :goto_1
    and-int/lit8 v8, v5, 0x5

    if-nez v8, :cond_4

    if-eqz v1, :cond_4

    iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v8, v8, v3

    if-eq v1, v8, :cond_3

    iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v1, v8, :cond_3

    if-eqz v4, :cond_4

    const/16 v8, 0x8

    if-ne v1, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 852
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 843
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getNumericShortcut()C

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/o;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1215
    invoke-direct {p0, v0, p1, v0}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1216
    return-object p0
.end method

.method protected final a(Landroid/view/View;)Landroid/support/v7/internal/view/menu/o;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1239
    invoke-direct {p0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1240
    return-object p0
.end method

.method protected final a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/o;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1191
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1192
    return-object p0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ad;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->d:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Landroid/support/v7/internal/view/menu/ad;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->n:Z

    .line 223
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/p;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->h:Landroid/support/v7/internal/view/menu/p;

    .line 394
    return-void
.end method

.method final a(Landroid/view/MenuItem;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    .line 558
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 559
    :goto_0
    if-ge v3, v5, :cond_2

    .line 560
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 561
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->b(Z)V

    .line 559
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 566
    goto :goto_1

    .line 573
    :cond_2
    return-void
.end method

.method final a(Z)V
    .locals 3

    .prologue
    .line 964
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->t:Z

    if-eqz v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 968
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->t:Z

    .line 969
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 970
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ad;

    .line 971
    if-nez v1, :cond_1

    .line 972
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 974
    :cond_1
    invoke-interface {v1, p0, p1}, Landroid/support/v7/internal/view/menu/ad;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    goto :goto_1

    .line 977
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->t:Z

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->f:Z

    return v0
.end method

.method a(Landroid/support/v7/internal/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->h:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->h:Landroid/support/v7/internal/view/menu/p;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1284
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1290
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->f()V

    .line 1291
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1292
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ad;

    .line 1293
    if-nez v1, :cond_2

    .line 1294
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1295
    :cond_2
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/ad;->b(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1296
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->g()V

    .line 1301
    if-eqz v0, :cond_0

    .line 1302
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->w:Landroid/support/v7/internal/view/menu/s;

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final a(Landroid/view/MenuItem;I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 916
    check-cast p1, Landroid/support/v7/internal/view/menu/s;

    .line 918
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 952
    :cond_1
    :goto_0
    return v0

    .line 922
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->a()Z

    move-result v4

    .line 924
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->m()Landroid/support/v4/view/n;

    .line 925
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 927
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->expandActionView()Z

    move-result v0

    or-int/2addr v0, v4

    .line 928
    if-eqz v0, :cond_1

    .line 929
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    goto :goto_0

    .line 931
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 932
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    .line 934
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_4

    .line 935
    new-instance v0, Landroid/support/v7/internal/view/menu/aj;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->d:Landroid/content/Context;

    invoke-direct {v0, v2, p0, p1}, Landroid/support/v7/internal/view/menu/aj;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/support/v7/internal/view/menu/s;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/aj;)V

    .line 938
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/aj;

    .line 939
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    or-int v0, v4, v1

    .line 943
    if-nez v0, :cond_1

    .line 944
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    goto :goto_0

    .line 939
    :cond_5
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/ad;

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez v3, :cond_a

    invoke-interface {v2, v0}, Landroid/support/v7/internal/view/menu/ad;->a(Landroid/support/v7/internal/view/menu/aj;)Z

    move-result v1

    :goto_3
    move v3, v1

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_1

    .line 947
    :cond_8
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_9

    .line 948
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    :cond_9
    move v0, v4

    goto :goto_0

    :cond_a
    move v1, v3

    goto :goto_3
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 9

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 464
    const/4 v0, 0x0

    invoke-virtual {v4, p4, p5, p6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 466
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    .line 468
    :goto_0
    and-int/lit8 v0, p7, 0x1

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->removeGroup(I)V

    .line 472
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 473
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 474
    new-instance v6, Landroid/content/Intent;

    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v1, :cond_3

    move-object v1, p6

    :goto_2
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 476
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 479
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/support/v7/internal/view/menu/o;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    .line 482
    if-eqz p8, :cond_1

    iget v6, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v6, :cond_1

    .line 483
    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v1, p8, v0

    .line 472
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 466
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 474
    :cond_3
    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v1, p5, v1

    goto :goto_2

    .line 487
    :cond_4
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    .prologue
    .line 448
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 449
    new-instance v1, Landroid/support/v7/internal/view/menu/aj;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/internal/view/menu/aj;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/support/v7/internal/view/menu/s;)V

    .line 450
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/aj;)V

    .line 452
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/ad;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 233
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ad;

    .line 234
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 235
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_2
    return-void
.end method

.method final b(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 993
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->q:Z

    if-nez v0, :cond_4

    .line 994
    if-eqz p1, :cond_0

    .line 995
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->k:Z

    .line 996
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->n:Z

    .line 999
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->f()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ad;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/ad;->c(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->g()V

    .line 1003
    :cond_3
    :goto_1
    return-void

    .line 1001
    :cond_4
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->r:Z

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->g:Z

    return v0
.end method

.method public b(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1308
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->w:Landroid/support/v7/internal/view/menu/s;

    if-eq v1, p1, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return v0

    .line 1314
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->f()V

    .line 1315
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1316
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ad;

    .line 1317
    if-nez v1, :cond_2

    .line 1318
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1319
    :cond_2
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/ad;->c(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1320
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->g()V

    .line 1325
    if-eqz v0, :cond_0

    .line 1326
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->w:Landroid/support/v7/internal/view/menu/s;

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method final c()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->w:Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->w:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Landroid/support/v7/internal/view/menu/s;)Z

    .line 550
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 553
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1145
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Landroid/graphics/drawable/Drawable;

    .line 1146
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Ljava/lang/CharSequence;

    .line 1147
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->c:Landroid/view/View;

    .line 1149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 1150
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    .line 983
    return-void
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->h:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->h:Landroid/support/v7/internal/view/menu/p;

    invoke-interface {v0, p0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/o;)V

    .line 787
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 1011
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->q:Z

    if-nez v0, :cond_0

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->q:Z

    .line 1013
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->r:Z

    .line 1015
    :cond_0
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v2

    .line 639
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 640
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 641
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 652
    :cond_0
    :goto_1
    return-object v0

    .line 643
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 644
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 646
    if-nez v0, :cond_0

    .line 639
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 652
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1018
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->q:Z

    .line 1020
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->r:Z

    if-eqz v0, :cond_0

    .line 1021
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->r:Z

    .line 1022
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 1024
    :cond_0
    return-void
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method final h()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1033
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->k:Z

    .line 1034
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 1035
    return-void
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 624
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v3

    move v2, v1

    .line 626
    :goto_0
    if-ge v2, v3, :cond_1

    .line 627
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 628
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    .line 633
    :goto_1
    return v0

    .line 626
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 633
    goto :goto_1
.end method

.method final i()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1044
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->n:Z

    .line 1045
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 1046
    return-void
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/o;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final j()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1049
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->k:Z

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->j:Ljava/util/ArrayList;

    .line 1068
    :goto_0
    return-object v0

    .line 1054
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1056
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1058
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1059
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 1060
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1061
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1065
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/internal/view/menu/o;->k:Z

    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->n:Z

    .line 1068
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->j:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final k()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1096
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->n:Z

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1103
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ad;

    .line 1104
    if-nez v1, :cond_1

    .line 1105
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1107
    :cond_1
    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/ad;->j()Z

    move-result v0

    or-int/2addr v0, v2

    move v2, v0

    .line 1109
    goto :goto_1

    .line 1111
    :cond_2
    if-eqz v2, :cond_4

    .line 1112
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1113
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1114
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v2

    .line 1115
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v3

    .line 1116
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1117
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 1118
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->i()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1119
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1121
    :cond_3
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1127
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1128
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1131
    :cond_5
    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/o;->n:Z

    goto :goto_0
.end method

.method final l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->k()V

    .line 1136
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method final m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1140
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->k()V

    .line 1141
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final o()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final p()Landroid/view/View;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->c:Landroid/view/View;

    return-object v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .prologue
    .line 912
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/o;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/s;

    move-result-object v1

    .line 804
    const/4 v0, 0x0

    .line 806
    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {p0, v1, p3}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 810
    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 811
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    .line 814
    :cond_1
    return v0
.end method

.method public q()Landroid/support/v7/internal/view/menu/o;
    .locals 0

    .prologue
    .line 1261
    return-object p0
.end method

.method final r()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->s:Z

    return v0
.end method

.method public removeGroup(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v3, v2

    .line 499
    :goto_1
    if-ltz v3, :cond_3

    .line 500
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v4, v0, v3

    move v0, v1

    .line 502
    :goto_2
    add-int/lit8 v2, v0, 0x1

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 504
    invoke-direct {p0, v3, v1}, Landroid/support/v7/internal/view/menu/o;->a(IZ)V

    move v0, v2

    goto :goto_2

    .line 497
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    .line 508
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 510
    :cond_3
    return-void
.end method

.method public removeItem(I)V
    .locals 3

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/view/menu/o;->a(IZ)V

    .line 493
    return-void

    .line 492
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final s()Landroid/support/v7/internal/view/menu/s;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->w:Landroid/support/v7/internal/view/menu/s;

    return-object v0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 579
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 580
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 581
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 582
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/s;->a(Z)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/s;->setCheckable(Z)Landroid/view/MenuItem;

    .line 579
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .prologue
    .line 612
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 614
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 615
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 616
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 617
    invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/s;->setEnabled(Z)Landroid/view/MenuItem;

    .line 614
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 620
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 596
    :goto_0
    if-ge v3, v4, :cond_0

    .line 597
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 598
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 599
    invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/s;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 596
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 605
    :cond_0
    if-eqz v2, :cond_1

    .line 606
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 608
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 707
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/o;->f:Z

    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 710
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
