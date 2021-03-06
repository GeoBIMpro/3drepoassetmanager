/**
*  Copyright (C) 2017 3D Repo Ltd
*
*  This program is free software: you can redistribute it and/or modify
*  it under the terms of the GNU Affero General Public License as
*  published by the Free Software Foundation, either version 3 of the
*  License, or (at your option) any later version.
*
*  This program is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU Affero General Public License for more details.
*
*  You should have received a copy of the GNU Affero General Public License
*  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "repo_byte_image_provider.h"

using namespace repo;

QPixmap RepoByteImageProvider::requestPixmap(
        const QString &id,
        QSize *size,
        const QSize & requestedSize)
{
    QPixmap pixmap;
    if (!id.isEmpty())
    {
        pixmap.loadFromData(QByteArray::fromHex(id.toLatin1()));
        pixmap = pixmap.scaled(requestedSize, Qt::KeepAspectRatioByExpanding);
    }
    *size = QSize(pixmap.width(), pixmap.height());
    return pixmap;
}

