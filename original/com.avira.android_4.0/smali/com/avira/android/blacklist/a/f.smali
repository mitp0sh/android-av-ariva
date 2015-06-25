.class public final Lcom/avira/android/blacklist/a/f;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/blacklist/model/BLContact;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    const v0, 0x109000a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    iput-object p2, p0, Lcom/avira/android/blacklist/a/f;->a:Ljava/util/List;

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/f;->b:Landroid/view/LayoutInflater;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/a/f;->c:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/a/f;J)Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 37
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/avira/android/blacklist/a/f;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 37
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v3
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 54
    .line 57
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/avira/android/blacklist/a/f;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v1, Lcom/avira/android/blacklist/a/h;

    invoke-direct {v1, p0, v7}, Lcom/avira/android/blacklist/a/h;-><init>(Lcom/avira/android/blacklist/a/f;B)V

    .line 62
    const v0, 0x7f0e0066

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/android/KievitLightTextView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/h;->a:Lcom/avira/android/KievitLightTextView;

    .line 63
    const v0, 0x7f0e0067

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/android/KievitLightTextView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/h;->b:Lcom/avira/android/KievitLightTextView;

    .line 64
    const v0, 0x7f0e0065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/h;->d:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0e0064

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/avira/android/blacklist/a/h;->c:Landroid/view/View;

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/avira/android/blacklist/a/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 75
    iget-object v2, v1, Lcom/avira/android/blacklist/a/h;->a:Lcom/avira/android/KievitLightTextView;

    .line 76
    iget-object v3, v1, Lcom/avira/android/blacklist/a/h;->b:Lcom/avira/android/KievitLightTextView;

    .line 77
    iget-object v4, v1, Lcom/avira/android/blacklist/a/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 78
    new-instance v4, Lcom/avira/android/blacklist/a/g;

    iget-object v5, v1, Lcom/avira/android/blacklist/a/h;->d:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/avira/android/blacklist/a/f;->c:Landroid/graphics/Bitmap;

    invoke-direct {v4, p0, v5, v6}, Lcom/avira/android/blacklist/a/g;-><init>(Lcom/avira/android/blacklist/a/f;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/avira/android/blacklist/a/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/avira/android/KievitLightTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v1, Lcom/avira/android/blacklist/a/h;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v1, v1, Lcom/avira/android/blacklist/a/h;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v3, v0}, Lcom/avira/android/KievitLightTextView;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v3, p0}, Lcom/avira/android/KievitLightTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-object p2

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/a/h;

    move-object v1, v0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 136
    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/f;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 151
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v3, "existing_contact_data_tag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0e0064
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
